package com.nbugaenco.exam.service;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Objects;
import java.util.Optional;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.nbugaenco.exam.entity.Toy;
import com.nbugaenco.exam.entity.dto.ToyDto;
import com.nbugaenco.exam.mapper.ToyMapper;
import com.nbugaenco.exam.repository.ToyRepository;
import lombok.RequiredArgsConstructor;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@RequiredArgsConstructor
public class ToyService {

  private final ToyMapper     toyMapper;
  private final ToyRepository toyRepository;

  @Value("${upload.path}")
  private String uploadPath;

  public Page<Toy> searchToys(final Pageable pageable) {
    return toyRepository.findAll(pageable);
  }

  public Toy findById(final Integer id) {
    return toyRepository.findById(id).orElse(null);
  }

  @Transactional
  public Toy addToy(final ToyDto toyDto) {
    final String photoName = savePhoto(toyDto.getPhoto());

    final Toy toy = toyMapper.toToy(toyDto, photoName);

    return toyRepository.save(toy);
  }

  @Transactional
  @SneakyThrows
  public Toy updateToy(final ToyDto toyDto) {
    final Toy toy = findById(toyDto.getId());

    String photoName = toy.getPhoto();
    if (!Objects.equals(asOriginalFilename(toyDto), toy.getPhoto()) && !asOriginalFilename(toyDto).isEmpty()) {
      if (toy.getPhoto() != null && Files.exists(toPhotoPath(toy.getPhoto()))) {
        Files.delete(toPhotoPath(toy.getPhoto()));
      }

      photoName = savePhoto(toyDto.getPhoto());
    }

    Toy updatedToy = toyMapper.toToy(toyDto, photoName, toy);

    return toyRepository.save(updatedToy);
  }

  public void deleteToy(final Integer toyId) {
    toyRepository.deleteById(toyId);
  }

  @SneakyThrows
  private String savePhoto(final MultipartFile photo) {
    File uploadDir = new File(uploadPath);

    if (!uploadDir.exists() && uploadDir.mkdir()) {
      log.info("Upload directory has been created: {}", uploadDir.getAbsolutePath());
    }

    String fileName = UUID.randomUUID() + "_" + photo.getOriginalFilename();
    final File resultFile = new File(uploadDir.getAbsolutePath() + File.separator + fileName);

    log.info("Image uploaded {}", resultFile.getAbsolutePath());

    photo.transferTo(resultFile);

    return fileName;
  }

  private String asOriginalFilename(final ToyDto toyDto) {
    return Optional.of(toyDto).map(ToyDto::getPhoto).map(MultipartFile::getOriginalFilename).orElse("");
  }

  private Path toPhotoPath(final String photoName) {
    return Path.of(uploadPath + File.separator + photoName);
  }

}

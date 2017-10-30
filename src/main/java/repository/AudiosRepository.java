package repository;

import entity.Audio;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AudiosRepository extends JpaRepository<Audio, Integer> {
}

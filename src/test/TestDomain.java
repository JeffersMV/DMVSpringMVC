import entity.Audio;
import entity.Photo;
import entity.Video;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import repository.AudiosRepository;
import repository.PhotosRepository;
import repository.VideosRepository;

import java.sql.Timestamp;
import java.util.Date;

public class TestDomain {
    @Test
    public static void main(String[] args) {
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("test-springmvc.xml");
        AudiosRepository audiosRepository = context.getBean(AudiosRepository.class);
        Audio audio = new Audio();
        audio.setAudio("Audio_Test");
        audio.setDate(new Timestamp(new Date().getTime()));
        audio.setName("SecondAudio");
        audiosRepository.save(audio);
        System.out.println(audio.toString());

        PhotosRepository photosRepository = context.getBean(PhotosRepository.class);
        Photo photo = new Photo();
        photo.setName("Photo_Test");
        photo.setDate(new Timestamp(new Date().getTime()));
        photo.setPhoto("SecondPhoto");
        photosRepository.save(photo);
        System.out.println(photo.toString());

        VideosRepository videosRepository = context.getBean(VideosRepository.class);
        Video video = new Video();
        video.setName("Video_Test");
        video.setDate(new Timestamp(new Date().getTime()));
        video.setVideo("SecondVideo");
        videosRepository.save(video);
        System.out.println(video.toString());
    }
}

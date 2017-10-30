package repositoryTest;


import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import repository.PhotosRepository;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"/test-spring-date-jpa.xml"})
public class PhotoRepositoryTest {

    @Autowired
    private
    PhotosRepository photosRepository;


    @Test
    public void getEntityTest() {
        Assert.assertNotNull(photosRepository.getOne(2));
    }

    @Test
    public void findAllByIdTest() {
        Assert.assertNotNull(photosRepository.findAll());
    }
}

package repositoryTest;

import junit.framework.TestCase;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import repository.VideosRepository;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"/test-spring-date-jpa.xml"})
public class VideoRepositoryTest extends TestCase {

    @Autowired
    private
    VideosRepository videosRepository;

    @Test
    public void getEntityTest() {
        Assert.assertNotNull(videosRepository.getOne(3));
    }

    @Test
    public void findAllByIdTest() {
        Assert.assertNotNull(videosRepository.findAll());
    }
}

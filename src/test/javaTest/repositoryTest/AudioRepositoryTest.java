package repositoryTest;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import repository.AudiosRepository;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"/test-spring-date-jpa.xml"})
public class AudioRepositoryTest {

    @Autowired
    private
    AudiosRepository audiosRepository;

    @Test
    public void getOneTest() {
        Assert.assertNotNull(audiosRepository.getOne(1));
    }

    @Test
    public void findAllByIdTest() {
        Assert.assertNotNull(audiosRepository.findAll());
    }


}

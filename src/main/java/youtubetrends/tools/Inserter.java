package youtubetrends.tools;

import java.sql.Date;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;
import youtubetrends.dal.AdministratorsDao;
import youtubetrends.dal.PersonsDao;
import youtubetrends.dal.VideosDao;
import youtubetrends.model.Administrators;
import youtubetrends.model.Comments;
import youtubetrends.model.Persons;
import youtubetrends.model.Users;
import youtubetrends.model.Videos;


/**
 * main() runner, used for the app demo.
 * <p>
 * Instructions: 1. Create a new MySQL schema and then run the CREATE TABLE statements from lecture:
 * http://goo.gl/86a11H. 2. Update ConnectionManager with the correct user, password, and schema.
 */
public class Inserter {

  public static void main(String[] args) throws SQLException {
    //create function exercise

    UsersDao usersDao = UsersDao.getInstance();
    java.sql.Date date = new java.sql.Date(20211005);
    Users user1 = new Users(1, "user", "user", date);
    user1 = usersDao.create(user1);

    PersonsDao personsDao = PersonsDao.getInstance();
    Persons person1 = new Persons(1, "1", "2");
    person1 = personsDao.create(person1);

    AdministratorsDao administratorsDao = AdministratorsDao.getInstance();
    Administrators administrators = new Administrators(1, "ad", "ad", new java.sql.Date(20201010));
    administrators = administratorsDao.create(administrators);

    CommentsDao commentsDao = CommentsDao.getInstance();
    Comments comments = new Comments(1, "cm", new Date(20201205), user1);
    comments = commentsDao.create(comments);

//    VideosDao videosDao = VideosDao.getInstance();
//    Videos videos = new Videos("title", "trendingDate", new Timestamp(date.getTime()), "tags",
//        Long.parseLong("536143"), Long.parseLong("538"), "thumbnailLink", Long.parseLong("53688"),
//        true, true, true, "description", 1, 1, 1);
//    videos = videosDao.create(videos);
//    videosDao.delete(videos);
//    Videos videos1 = videosDao.getVideosById(1);
//    System.out.format(
//        "Reading videos: VideoId:%d Title:%s TrendingDate:%s PublishTime: %s Tags:%s Views: %d commentCount: %d thumbnailLink: %s dislikes: %d commentsDisabled:%b ratingsDisabled:%b videoErrorOrRemoved:%b description: %s category: %s Users:%s countryId: %s  \n",
//        videos.getVideoId(), videos.getTitle(), videos.getTrendingDate(), videos.getPublishTime(),
//        videos.getTags(), videos.getViews(), videos.getCommentCount(), videos.getThumbnailLink(),
//        videos.getDislikes(), videos.isCommentsDisabled(), videos.isRatingsDisabled(),
//        videos.isVideoErrorOrRemoved(), videos.getDescription(), videos.getCategoryId(),
//        videos.getUserId(), videos.getCountryId());
    //read function exercise
    Persons p1 = personsDao.getPersonByUserName(1);
    System.out.format("Reading person: UserId:%s FirstName:%s LastName:%s \n", p1.getUserId(),
        p1.getFirstName(), p1.getLastName());

    List<Persons> personsList = personsDao.getPersonsFromFirstName("1");
    for (Persons p : personsList) {
      System.out.format("Looping persons: FirstName:%s LastName:%s UserId:%s \n", p.getFirstName(),
          p.getLastName(), p.getUserId());
    }

    Users u1 = usersDao.getUserByUserId(1);
    System.out.format("Reading users: UserId:%s FirstName:%s LastName:%s \n", u1.getUserId(),
        u1.getFirstName(), u1.getLastName());

    List<Users> userList = usersDao.getUsersByFirstName("user");
    for (Users p : userList) {
      System.out.format("Looping users: FirstName:%s LastName:%s UserId:%s DoB:%s \n",
          p.getFirstName(), p.getLastName(), p.getUserId(), p.getDoB());
    }

    Comments c1 = commentsDao.getCommentById(1);
    System.out.format("Reading comment: CommentId:%s Created:%s Content:%s \n", c1.getCommentId(),
        c1.getCreated(), c1.getContent());

    List<Administrators> administratorsList = administratorsDao.getAdministratorsFromFirstName(
        "ad");
    for (Administrators administrator : administratorsList) {
      System.out.format(
          "Reading administrators: FirstName:%s LastName:%s UserId:%s LastLogin:%s \n",
          administrator.getFirstName(), administrator.getLastName(), administrator.getUserId(),
          administrator.getLastLogin());
    }

    //exercise update function
    Persons personUpdate = personsDao.updateLastName(person1, "update");
    System.out.format("Updating person1: 1:%s 2:%s \n", person1.getUserId(), person1.getLastName());
    Users userUpdate = usersDao.updateLastName(user1, "hahah");
    System.out.format("Updating administrator1: 1:%s 2:%s \n", user1.getUserId(),
        user1.getLastName());
    Administrators administrators1 = administratorsDao.updateLastName(administrators, "hhh");
    System.out.format("Updating administrator1: 1:%s 2:%s \n", administrators.getUserId(),
        administrators.getLastName());

    //exercise delete function
    usersDao.delete(user1);

    personsDao.delete(person1);

    commentsDao.delete(c1);
  }
}

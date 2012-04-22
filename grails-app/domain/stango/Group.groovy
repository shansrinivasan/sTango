package stango
import com.lucastex.grails.fileuploader.UFile
class Group {
	Country	country
	static hasMany = [user:User]
	String zip
	String groupName
	String homePageheadline
	String description
	Date startDate
	Date endDate
	User admin
    UFile image;

    static mapping = {
        table 'group_st'
    }
    static constraints = {
    }
}

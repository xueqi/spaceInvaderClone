/// @description bullet to bullet
// This would destroy two bullet if the bollet is hit by another bullet.
// same kind of bullet would not destroy each other

if bid != other.bid {
	with (other) {
		instance_destroy()
	}

	instance_destroy()	
}
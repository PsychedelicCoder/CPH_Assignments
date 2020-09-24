boolean jobsDone = true;
boolean isValueGreaterThanThreshold;

void setup()
{
    println(isValueGreaterThanThreshold(10, 5, true));
    println(isValueGreaterThanThreshold(4, 8, false));
    
    if (isJobDone())
    {
        println("Job's done!"); 
    }
}

boolean isValueGreaterThanThreshold(int value, int threshold, boolean jobsDone) 
{
    if (value > threshold) 
    {
        return true;                
    }
    return isValueGreaterThanThreshold;
}

boolean isJobDone()
{
    return jobsDone;    
}

# Hospital Management System

## Layihə Haqqında
"Hospital Management System" (Xəstəxana İdarəetmə Sistemi) layihəsi, xəstəxana mühitində xəstə, həkim və müalicə proseslərinin effektiv idarə olunmasını təmin edir. Bu sistem, tibbi məlumatların toplanması, saxlanması və idarə edilməsi üçün nəzərdə tutulmuşdur. Layihənin məqsədi, xəstəxana iş proseslərini asanlaşdırmaq, məlumatların mərkəzləşdirilməsini təmin etmək və tibbi xidmətlərin keyfiyyətini artırmaqdır.

## Cədvəllər
Layihə aşağıdakı cədvəlləri əhatə edir:

1. **Patients**: Xəstə məlumatlarını saxlayır.
   - `PatientID`: Xəstənin unikal identifikatoru (Primary Key)
   - `FirstName`: Xəstənin adı
   - `LastName`: Xəstənin soyadı
   - `DateOfBirth`: Xəstənin doğum tarixi
   - `Gender`: Xəstənin cinsiyyəti
   - `Phone`: Xəstənin telefon nömrəsi
   - `Address`: Xəstənin ünvanı

2. **Doctors**: Həkim məlumatlarını saxlayır.
   - `DoctorID`: Həkimin unikal identifikatoru (Primary Key)
   - `FirstName`: Həkimin adı
   - `LastName`: Həkimin soyadı
   - `Specialty`: Həkimin ixtisası
   - `Phone`: Həkimin telefon nömrəsi

3. **Appointments**: Təyinatların məlumatlarını saxlayır.
   - `AppointmentID`: Təyinatın unikal identifikatoru (Primary Key)
   - `PatientID`: Təyinat üçün xəstənin identifikatoru (Foreign Key)
   - `DoctorID`: Təyinat üçün həkimin identifikatoru (Foreign Key)
   - `AppointmentDate`: Təyinat tarixi
   - `Status`: Təyinatın vəziyyəti (Scheduled, Completed, Canceled)

4. **Treatments**: Müalicələrin məlumatlarını saxlayır.
   - `TreatmentID`: Müalicənin unikal identifikatoru (Primary Key)
   - `AppointmentID`: Müalicəyə aid olan təyinatın identifikatoru (Foreign Key)
   - `TreatmentDescription`: Müalicənin təsviri
   - `TreatmentDate`: Müalicə tarixi

## İstifadəçi Qrupunun Təsviri
Bu sistem, xəstəxana işçiləri, həkimlər, tibbi personal, xəstəxana menecerləri və tibb sahəsində çalışan mütəxəssislər üçün nəzərdə tutulmuşdur. Layihə, xəstə məlumatlarının mühafizəsi, tibbi xidmətlərin keyfiyyətinin artırılması və iş proseslərinin səmərəli idarə olunması üçündür.

## İstifadə Qaydası
1. **Verilənlər Bazası Yaradın**: Oracle SQL istifadə edərək lazımi cədvəlləri yaratmaq üçün `create_tables.sql` faylını icra edin.
2. **Məlumatları Daxil Edin**: `insert_data.sql` faylını icra edərək sistemə ilkin məlumatları daxil edin.
3. **Sorğular İcra Edin**: Müxtəlif məlumatları əldə etmək üçün `queries.sql` faylını icra edin. Bu fayl, xəstə, həkim və təyinatlar haqqında sorğuları əhatə edir.
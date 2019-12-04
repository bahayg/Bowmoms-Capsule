# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    10.times do
        User.create({
            username: Faker::Name.name,
            email: Faker::Internet.free_email
        })
    end

    topics = Topic.create ([
        {title: 'Growth and Development'},
        {title: 'Nutrition'},
        {title: 'Emotions'},
        {title: 'Family life'},
    ])

    diseases = Disease.create ([
        {name: 'Posterior urethral valve obstruction', description: 'This narrowing or obstruction of the urethra affects only boys. It can be diagnosed before the baby is born or just after and is treated with surgery.'},
        {name: 'Fetal hydronephrosis', description: 'This enlargement of one or both of the kidneys is caused by either an obstruction in the developing urinary tract or a condition called vesicoureteral reflux (VUR) in which urine abnormally flows backward (or refluxes) from the bladder into the ureters. Fetal hydronephrosis is usually diagnosed before the child is born and treatment varies widely. In some cases the condition only requires ongoing monitoring; in others, surgery must be done to clear the obstruction from the urinary tract.'},
        {name: 'Polycystic kidney disease (PKD)', description: 'This is a condition in which many fluid-filled cysts develop in both kidneys. The cysts can multiply so much and grow so large that they lead to kidney failure. Most forms of PKD are inherited. Doctors can diagnose it before or after the child is born. In some cases, there are no symptoms; in others, PKD can lead to UTIs, kidney stones, and high blood pressure. Treatment for PKD varies — some cases can be managed with dietary changes; others require a kidney transplant or dialysis.'},
        {name: 'Multicystic kidney disease (MKD):', description: 'This is when large cysts develop in a kidney that hasn\'t developed properly, eventually causing it to stop working. (While PKD always affects both kidneys, MKD usually affects just one kidney.) Fortunately, the unaffected kidney takes over and most people with MKD will have normal kidney function. MKD usually is diagnosed by prenatal ultrasound before birth. Doctors manage it by monitoring blood pressure and screening for UTIs when needed. Very rarely, surgical removal of the kidney might be necessary.'},
        {name: 'Renal tubular acidosis', description: 'Each time our internal organs do something, such as digesting food or healing damaged tissue, chemical reactions take place in the body\'s cells. These reactions cause acid to go into the bloodstream.Normally, the kidneys remove excess acid from blood, but certain diseases, genetic defects, or drugs can damage a kidney\'s ability to do this important job. This can allow too much acid to build up in the blood and cause problems. When this happens, it\'s called renal tubular acidosis (RTA)'},
        {name: 'Wilms tumor', description: 'Also known as nephroblastoma, Wilms tumor can affect both kidneys, but usually develops in just one. Doctors believe that the tumor begins to grow as a fetus develops in the womb, with some cells that should form into the kidneys instead forming a tumor.'},
        {name: 'Glomerulonephritis', description: 'The kidneys are fist-sized organs shaped like kidney beans. They clean blood and help remove waste that goes into pee (urine).When a child has glomerulonephritis (GN), the kidneys don\'t work properly and can\'t clean the blood well. This can happen quickly (acute GN) or slowly over time (chronic GN).GN causes problems with urinating (peeing) and swelling in parts of the body, like the face and hands. In some cases, it can lead to kidney damage or kidney failure.'},
        {name: 'Duplication of the ureters', description: 'Kidney will have two ureters instead of one. This can lead to urinary tract infections over time and can be treated with medication or, in some cases, with surgery.'},
        {name: 'Horseshoe kidney', description: 'The two kidneys are fused (connected) into one arched kidney that usually functions normally, but is more prone to develop problems later in life. An uncomplicated horseshoe kidney does not need medical or surgical treatment, but it does need to be checked regularly by doctors.'},
        {name: 'Nephritis', description: 'This is any inflammation of the kidney. It can be caused by infection, an autoimmune disease (such as lupus), or an unknown reason. The first symptoms of nephritis usually are high levels of protein and blood in the urine.'}
    ])

    (2..6).to_a.sample.times do 
        Post.create({
          title: Faker::Hipster.sentence,
          body: Faker::Hipster.paragraphs,
          user_id: User.order("RANDOM()").first[:id],
          topic_id: Topic.order("RANDOM()").first[:id]
        })
    end

    10.times do 
        Comment.create({
            text: Faker::Hipster.sentence,
            post_id: Post.order("RANDOM()").first[:id]
        })
    end

    # title: Faker::Hipster.sentence(1)
    # https://kidshealth.org/en/parents/kidney-diseases-childhood.html
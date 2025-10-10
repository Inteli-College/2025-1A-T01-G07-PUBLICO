# A Generative Design Experiment Applied to the Visual Identity of the PIET Brand

## Introduction
The digital age has transformed the nature of visual identities. Static logos, once sovereign, could be giving way to flexible and dynamic identity systems capable of adapting, reacting, and interacting with their audience. This project fits into this possible new paradigm, exploring the potential of generative design not just to create variations, but to bring a brand to life by transforming its symbol into an organism that reflects the culture around it.

The object of study is the Brazilian brand PIET, which, in its philosophy, positions itself as a **"portrait of the youthful spirit of a generation"** and an **"anthropological study of fashion."** The central question driving this experiment is: *How can a logo transcend static representation and, in fact, become a dynamic, pulsating, and living portrait of that spirit?*

The proposed answer is through sound. Music is a pillar of the urban subcultures that PIET explores. This project will develop a generative system that translates sound data into movement, making the PIET logo "dance" and transform in real-time, offering a living and sensory reinterpretation of the brand's identity.

## Object of Study
The choice of PIET and its asterisk symbol as the object of study is a strategic decision based on three pillars: conceptual, symbolic, and technical.

**Conceptual Pillar**: PIET's philosophy is that of the "unusual union" of different cultural universes. The generative experiment not only represents this philosophy but executes it. By forcing the brand's symbol to disintegrate and reconstruct based on music data, the system transforms the logo into a living platform of fusion, where the brand's visual identity and a subculture's sonic identity collide and unite in real-time.

**Symbolic Pillar**: The act of disintegrating and reintegrating the logo represents the fluidity of identity in the contemporary era, which is no longer seen as something fixed and monolithic. Like a person, the brand presents itself as a collection of influences—particles—that can disperse and explore chaos, but always return to a strong core identity. The visual effect, therefore, argues that PIET is a brand with a clear center of gravity but with porous and open borders to culture.

**Technical Pillar**: The asterisk's shape, composed of six identical modules, offers an ideal technical substrate for a particle system. This inherent symmetry provides a natural "scaffolding" for chaos. Even when the particles are in their most dispersed state, their modular origin ensures that the "dance" is never entirely random. This allows the system to create complex and aesthetically pleasing patterns, ensuring that the reintegration is always cohesive, as each particle "knows" to which of the six modules it belongs.

![cover_piet](https://github.com/user-attachments/assets/4181cf75-ae35-4686-bfae-ae42e80866d1)

## Concept and Visual Aesthetics
The concept is to create a "dance of particles," where the logo disintegrates and reintegrates in sync with music. The visual aesthetic will seek a balance between the chaotic and the organized. The movements will not be overly abrupt; the intention is that, even at the peak of the "explosion," the original shape of the asterisk remains as a visual "memory," with the particles being constantly drawn back to their place of origin.

![original-dba2ce2054747a6335eb0ce3e2c46788](https://github.com/user-attachments/assets/eacdcd09-5f1e-4d0b-b963-3c5a85875b6f)
![d80b5e69091c368164d9238c59e1427e](https://github.com/user-attachments/assets/122d5761-9b9f-4a42-b010-59dfc0681ef0)
![audioreactive_feat](https://github.com/user-attachments/assets/80fa09f6-976c-42e8-9ea3-fa9333b0052e)
![f13fa66289aac545b87d2e6fa76cfe12](https://github.com/user-attachments/assets/cabe39f4-e404-4092-bb7d-48d6618d8260)

## Technical Application
The system will be implemented in Processing, using its audio library to analyze the music. At the heart of this analysis is the Fast Fourier Transform (FFT) algorithm. This mathematical tool acts as a "sonic prism," decomposing the music's complex sound wave into its individual frequency spectrum. In practical terms, the FFT allows us to know, at any given moment, the intensity of the low, mid, and high-frequency sounds. It is this spectral analysis that gives us the granular control for the detailed mapping below:

| Sound Parameter | Visual Effect in the System | Conceptual Justification |
| :--- | :--- | :--- |
| **Low Frequencies (Beats)** | Trigger for the "Explosion": Acts as a repulsive force, pushing particles out from the center. | The beats are the "heartbeat" of the music. They will provide the main pulse for the logo's movement, creating a strong and intuitive rhythmic sync. |
| **Amplitude (Overall Volume)** | Intensity of the Explosion: Controls the maximum distance particles reach and the speed at which they move away. | The volume represents the overall energy of the music. Louder, more energetic sounds will result in a more dramatic and expansive disintegration. |
| **Mid/High Frequencies** | Secondary Movement and Rotation: Adds a subtle "noise" or vibration to each particle and controls the rotation speed of the ensemble. | The melodies and voices are the "texture" of the music. They will give the "dance" of the particles a more complex and detailed movement, preventing the explosion from being merely linear. |
| **Absence of Peaks** | Force of Attraction (Reintegration): In the absence of strong triggers, a constant force pulls the particles back to their original positions. | Ensures that the brand's symbol is never completely lost, maintaining a recognizable visual identity and creating a continuous cycle of order and chaos. |

## Business Applications
Beyond its conceptual value, this experiment unlocks practical applications that transform the visual identity from a static communication element into a dynamic tool for engagement and experience. Two key opportunities are detailed below:

### Transforming the Consumer into a Co-creator
The most direct application is a platform for co-creating on-demand products. The process could be as follows:

**Interaction**: On the PIET website, the user accesses the "Sonic Portrait" tool and selects a track from the brand's curated music selection.

**Creation**: As the music plays, the logo reacts on the screen. The user watches the "dance" and, at the moment they deem aesthetically perfect, clicks "Capture."

**Product**: The system generates a high-resolution image of that frame. This image becomes the main artwork for a t-shirt, which can be purchased through a pre-order model. Each piece would be accompanied by a special tag stating the name of the song and the exact moment of capture (e.g., "Track X - 2:17"), solidifying its status as a collector's item created in collaboration between the brand and the customer.

### Retail as a Cultural Stage
Instead of just using music as background ambience, this application transforms the physical store space into a dynamic stage. Projecting the reactive logo onto a main screen creates a living focal point that translates the environment's sonic energy into a visual manifestation of the brand's identity. The value here lies in three points:

**Sensory Branding**: It creates a synesthetic experience where what is heard is directly connected to what is seen. This can generate a much stronger and more memorable brand impression than the elements of sound and vision acting separately.

**Constantly Renewing Environment**: The "decoration" of the space is almost never the same. Every song that plays generates a new visual performance, causing the store's atmosphere to constantly renew itself.

**The "Live" Factor**: The awareness that the animation is not a recorded video, but something being generated in that moment, from the music in that place, creates a sense of a live event and authenticity, which can elevate the shopping experience into a cultural immersion.

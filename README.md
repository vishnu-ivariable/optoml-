# optoml-
The Task: Implement a single-stage pipeline register in SystemVerilog using a standard valid/ready handshake. 
- The Logic: The module sits between an input and output interface, accepts data when in_valid and in_ready are asserted, presents stored data on the output with out_valid, and correctly handles backpressure without data loss or duplication. The design should be fully synthesizable and reset to a clean, empty state. 


given single-stage pipleline register seems similar to a handshake protocol for a bus architecture 
<img width="883" height="468" alt="Screenshot (4)" src="https://github.com/user-attachments/assets/b0f0c822-234a-49fa-9cfb-4ee34cf1ebed" />

this block diagram defines the single stage pipeline register with the width size `width` = 8 bits for in_data and out_data and other given signals in_valid, in_ready, out_valid
![6089140818657611289](https://github.com/user-attachments/assets/3ca1d463-caaf-4799-baf2-6a8ff01de29c)

below simulation diagram shows the simulation of the pipelined register


<img width="1920" height="1080" alt="Screenshot (3)" src="https://github.com/user-attachments/assets/f3f30482-6537-4f58-931f-0cfae3bff28f" />

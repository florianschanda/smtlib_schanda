(set-info :smt-lib-version 2.5)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_ABVFP)
(set-info :source |Benchmarks generated by CBMC and post-processed to set appropriate logic and remove get-value commands.|)
(set-info :category industrial)
(set-info :status unknown)

(define-fun |__CPROVER_dead_object#1| () (_ BitVec 64) (_ bv0 64))
(define-fun |__CPROVER_deallocated#1| () (_ BitVec 64) (_ bv0 64))
(define-fun |__CPROVER_malloc_is_new_array#1| () Bool false)
(define-fun |__CPROVER_malloc_object#1| () (_ BitVec 64) (_ bv0 64))
(define-fun |__CPROVER_malloc_size#1| () (_ BitVec 64) (_ bv0 64))
(define-fun |__CPROVER_memory_leak#1| () (_ BitVec 64) (_ bv0 64))
(define-fun |__CPROVER_next_thread_id#1| () (_ BitVec 64) (_ bv0 64))
(define-fun |__CPROVER_pipe_count#1| () (_ BitVec 32) (_ bv0 32))
(define-fun |__CPROVER_rounding_mode!0#1| () (_ BitVec 32) (_ bv0 32))
(define-fun |__CPROVER_thread_id!0#1| () (_ BitVec 64) (_ bv0 64))
(declare-fun array_of.0 () (Array (_ BitVec 64) (_ BitVec 1)))
(define-fun |__CPROVER_threads_exited#1| () (Array (_ BitVec 64) (_ BitVec 1)) array_of.0)
(declare-fun |argc'#0| () (_ BitVec 32))
(declare-fun |argv'#0| () (Array (_ BitVec 32) (_ BitVec 64)))
(define-fun |argv'#1| () (Array (_ BitVec 32) (_ BitVec 64)) (store |argv'#0| |argc'#0| (_ bv0 64)))
(define-fun |main::argc!0@1#1| () (_ BitVec 32) |argc'#0|)
(declare-fun |argv'| () (Array (_ BitVec 32) (_ BitVec 64)))
(define-fun |main::argv!0@1#1| () (_ BitVec 64) (concat (_ bv2 8) (_ bv0 56)))
(define-fun |main::1::x!0@1#2| () (_ FloatingPoint 11 53) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))
(define-fun |main::1::y!0@1#2| () (_ FloatingPoint 11 53) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))
(define-fun |main::1::1::pre_x!0@1#2| () (_ FloatingPoint 11 53) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))
(define-fun |main::1::1::pre_y!0@1#2| () (_ FloatingPoint 11 53) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))
(declare-fun |main::1::1::in0!0@1#1| () (_ FloatingPoint 11 53))
(define-fun |main::1::x!0@1#3| () (_ FloatingPoint 11 53) (fp.add roundNearestTiesToEven (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (fp.mul roundNearestTiesToEven (fp #b0 #b01111111111 #b1001100110011001100110011001100110011001100110011010) |main::1::1::in0!0@1#1|)))
(define-fun |main::1::y!0@1#3| () (_ FloatingPoint 11 53) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))
(define-fun |main::1::1::pre_x!0@1#5| () (_ FloatingPoint 11 53) |main::1::x!0@1#3|)
(define-fun |main::1::1::pre_y!0@1#5| () (_ FloatingPoint 11 53) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))
(declare-fun |main::1::1::in0!0@1#3| () (_ FloatingPoint 11 53))
(define-fun |main::1::x!0@1#4| () (_ FloatingPoint 11 53) (fp.add roundNearestTiesToEven (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111111 #b1000000000000000000000000000000000000000000000000000) |main::1::1::pre_x!0@1#5|) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (fp.mul roundNearestTiesToEven (fp #b0 #b01111111111 #b1001100110011001100110011001100110011001100110011010) |main::1::1::in0!0@1#3|)))
(define-fun |main::1::y!0@1#4| () (_ FloatingPoint 11 53) |main::1::1::pre_x!0@1#5|)
(define-fun |main::1::1::pre_x!0@1#8| () (_ FloatingPoint 11 53) |main::1::x!0@1#4|)
(define-fun |main::1::1::pre_y!0@1#8| () (_ FloatingPoint 11 53) |main::1::y!0@1#4|)
(declare-fun |main::1::1::in0!0@1#5| () (_ FloatingPoint 11 53))
(define-fun |main::1::x!0@1#5| () (_ FloatingPoint 11 53) (fp.add roundNearestTiesToEven (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111111 #b1000000000000000000000000000000000000000000000000000) |main::1::1::pre_x!0@1#8|) (fp.mul roundNearestTiesToEven (fp #b0 #b01111111110 #b0110011001100110011001100110011001100110011001100110) |main::1::1::pre_y!0@1#8|)) (fp.mul roundNearestTiesToEven (fp #b0 #b01111111111 #b1001100110011001100110011001100110011001100110011010) |main::1::1::in0!0@1#5|)))
(define-fun |main::1::y!0@1#5| () (_ FloatingPoint 11 53) |main::1::1::pre_x!0@1#8|)
(define-fun |main::1::1::pre_x!0@1#11| () (_ FloatingPoint 11 53) |main::1::x!0@1#5|)
(define-fun |main::1::1::pre_y!0@1#11| () (_ FloatingPoint 11 53) |main::1::y!0@1#5|)
(declare-fun |main::1::1::in0!0@1#7| () (_ FloatingPoint 11 53))
(define-fun |main::1::x!0@1#6| () (_ FloatingPoint 11 53) (fp.add roundNearestTiesToEven (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111111 #b1000000000000000000000000000000000000000000000000000) |main::1::1::pre_x!0@1#11|) (fp.mul roundNearestTiesToEven (fp #b0 #b01111111110 #b0110011001100110011001100110011001100110011001100110) |main::1::1::pre_y!0@1#11|)) (fp.mul roundNearestTiesToEven (fp #b0 #b01111111111 #b1001100110011001100110011001100110011001100110011010) |main::1::1::in0!0@1#7|)))
(define-fun |main::1::y!0@1#6| () (_ FloatingPoint 11 53) |main::1::1::pre_x!0@1#11|)
(define-fun |main::1::1::pre_x!0@1#14| () (_ FloatingPoint 11 53) |main::1::x!0@1#6|)
(define-fun |main::1::1::pre_y!0@1#14| () (_ FloatingPoint 11 53) |main::1::y!0@1#6|)
(declare-fun |main::1::1::in0!0@1#9| () (_ FloatingPoint 11 53))
(define-fun |main::1::x!0@1#7| () (_ FloatingPoint 11 53) (fp.add roundNearestTiesToEven (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111111 #b1000000000000000000000000000000000000000000000000000) |main::1::1::pre_x!0@1#14|) (fp.mul roundNearestTiesToEven (fp #b0 #b01111111110 #b0110011001100110011001100110011001100110011001100110) |main::1::1::pre_y!0@1#14|)) (fp.mul roundNearestTiesToEven (fp #b0 #b01111111111 #b1001100110011001100110011001100110011001100110011010) |main::1::1::in0!0@1#9|)))
(define-fun |main::1::y!0@1#7| () (_ FloatingPoint 11 53) |main::1::1::pre_x!0@1#14|)
(declare-fun |main::1::x!0@1#1| () (_ FloatingPoint 11 53))
(define-fun B0 () Bool (= |main::1::x!0@1#1| |main::1::x!0@1#1|))
(declare-fun |main::1::y!0@1#1| () (_ FloatingPoint 11 53))
(define-fun B1 () Bool (= |main::1::y!0@1#1| |main::1::y!0@1#1|))
(define-fun B2 () Bool (= |main::1::1::in0!0@1#1| |main::1::1::in0!0@1#1|))
(declare-fun |main::1::1::pre_x!0@1#1| () (_ FloatingPoint 11 53))
(define-fun B3 () Bool (= |main::1::1::pre_x!0@1#1| |main::1::1::pre_x!0@1#1|))
(declare-fun |main::1::1::pre_y!0@1#1| () (_ FloatingPoint 11 53))
(define-fun B4 () Bool (= |main::1::1::pre_y!0@1#1| |main::1::1::pre_y!0@1#1|))
(define-fun B5 () Bool (= |main::1::1::in0!0@1#3| |main::1::1::in0!0@1#3|))
(declare-fun |main::1::1::pre_x!0@1#4| () (_ FloatingPoint 11 53))
(define-fun B6 () Bool (= |main::1::1::pre_x!0@1#4| |main::1::1::pre_x!0@1#4|))
(declare-fun |main::1::1::pre_y!0@1#4| () (_ FloatingPoint 11 53))
(define-fun B7 () Bool (= |main::1::1::pre_y!0@1#4| |main::1::1::pre_y!0@1#4|))
(define-fun B8 () Bool (= |main::1::1::in0!0@1#5| |main::1::1::in0!0@1#5|))
(declare-fun |main::1::1::pre_x!0@1#7| () (_ FloatingPoint 11 53))
(define-fun B9 () Bool (= |main::1::1::pre_x!0@1#7| |main::1::1::pre_x!0@1#7|))
(declare-fun |main::1::1::pre_y!0@1#7| () (_ FloatingPoint 11 53))
(define-fun B10 () Bool (= |main::1::1::pre_y!0@1#7| |main::1::1::pre_y!0@1#7|))
(define-fun B11 () Bool (= |main::1::1::in0!0@1#7| |main::1::1::in0!0@1#7|))
(declare-fun |main::1::1::pre_x!0@1#10| () (_ FloatingPoint 11 53))
(define-fun B12 () Bool (= |main::1::1::pre_x!0@1#10| |main::1::1::pre_x!0@1#10|))
(declare-fun |main::1::1::pre_y!0@1#10| () (_ FloatingPoint 11 53))
(define-fun B13 () Bool (= |main::1::1::pre_y!0@1#10| |main::1::1::pre_y!0@1#10|))
(define-fun B14 () Bool (= |main::1::1::in0!0@1#9| |main::1::1::in0!0@1#9|))
(declare-fun |main::1::1::pre_x!0@1#13| () (_ FloatingPoint 11 53))
(define-fun B15 () Bool (= |main::1::1::pre_x!0@1#13| |main::1::1::pre_x!0@1#13|))
(declare-fun |main::1::1::pre_y!0@1#13| () (_ FloatingPoint 11 53))
(define-fun B16 () Bool (= |main::1::1::pre_y!0@1#13| |main::1::1::pre_y!0@1#13|))
(define-fun B17 () Bool (bvsge |argc'#0| (_ bv1 32)))
(define-fun B18 () Bool (not (bvsge |argc'#0| (_ bv268435457 32))))
(define-fun B19 () Bool (and (fp.leq |main::1::1::in0!0@1#1| (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)) (fp.geq |main::1::1::in0!0@1#1| (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000))))
(define-fun B20 () Bool (and (fp.leq |main::1::1::in0!0@1#3| (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)) (fp.geq |main::1::1::in0!0@1#3| (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000))))
(define-fun B21 () Bool (fp.geq (fp.add roundNearestTiesToEven (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111001 #b0011010011011101001110100011110011111100010100011100) |main::1::x!0@1#3|) |main::1::x!0@1#3|) (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111001 #b1111110000100000010000000110101101010110011111000000) |main::1::x!0@1#3|) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(define-fun B22 () Bool (and (fp.leq |main::1::1::in0!0@1#5| (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)) (fp.geq |main::1::1::in0!0@1#5| (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000))))
(define-fun B23 () Bool (fp.geq (fp.add roundNearestTiesToEven (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111001 #b0011010011011101001110100011110011111100010100011100) |main::1::x!0@1#4|) |main::1::x!0@1#4|) (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111001 #b1111110000100000010000000110101101010110011111000000) |main::1::x!0@1#4|) |main::1::y!0@1#4|)) (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111001 #b0000011010000111110000011110010101011011101010110000) |main::1::y!0@1#4|) |main::1::y!0@1#4|)) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(define-fun B24 () Bool (and (fp.leq |main::1::1::in0!0@1#7| (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)) (fp.geq |main::1::1::in0!0@1#7| (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000))))
(define-fun B25 () Bool (fp.geq (fp.add roundNearestTiesToEven (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111001 #b0011010011011101001110100011110011111100010100011100) |main::1::x!0@1#5|) |main::1::x!0@1#5|) (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111001 #b1111110000100000010000000110101101010110011111000000) |main::1::x!0@1#5|) |main::1::y!0@1#5|)) (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111001 #b0000011010000111110000011110010101011011101010110000) |main::1::y!0@1#5|) |main::1::y!0@1#5|)) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(define-fun B26 () Bool (and (fp.leq |main::1::1::in0!0@1#9| (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)) (fp.geq |main::1::1::in0!0@1#9| (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000))))
(define-fun B27 () Bool (fp.geq (fp.add roundNearestTiesToEven (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111001 #b0011010011011101001110100011110011111100010100011100) |main::1::x!0@1#6|) |main::1::x!0@1#6|) (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111001 #b1111110000100000010000000110101101010110011111000000) |main::1::x!0@1#6|) |main::1::y!0@1#6|)) (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111001 #b0000011010000111110000011110010101011011101010110000) |main::1::y!0@1#6|) |main::1::y!0@1#6|)) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(define-fun B28 () Bool (=> (and true B17 B18 B19) (fp.leq (fp.add roundNearestTiesToEven (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111001 #b0011010011011101001110100011110011111100010100011100) |main::1::x!0@1#3|) |main::1::x!0@1#3|) (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111001 #b1111110000100000010000000110101101010110011111000000) |main::1::x!0@1#3|) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (fp #b0 #b01111111111 #b0000000000010000110011011110001101100110001010001110))))
(define-fun B29 () Bool (=> (and true B17 B18 B19 B20 B21) (fp.leq (fp.add roundNearestTiesToEven (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111001 #b0011010011011101001110100011110011111100010100011100) |main::1::x!0@1#4|) |main::1::x!0@1#4|) (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111001 #b1111110000100000010000000110101101010110011111000000) |main::1::x!0@1#4|) |main::1::y!0@1#4|)) (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111001 #b0000011010000111110000011110010101011011101010110000) |main::1::y!0@1#4|) |main::1::y!0@1#4|)) (fp #b0 #b01111111111 #b0000000000010000110011011110001101100110001010001110))))
(define-fun B30 () Bool (=> (and true B17 B18 B19 B20 B21 B22 B23) (fp.leq (fp.add roundNearestTiesToEven (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111001 #b0011010011011101001110100011110011111100010100011100) |main::1::x!0@1#5|) |main::1::x!0@1#5|) (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111001 #b1111110000100000010000000110101101010110011111000000) |main::1::x!0@1#5|) |main::1::y!0@1#5|)) (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111001 #b0000011010000111110000011110010101011011101010110000) |main::1::y!0@1#5|) |main::1::y!0@1#5|)) (fp #b0 #b01111111111 #b0000000000010000110011011110001101100110001010001110))))
(define-fun B31 () Bool (=> (and true B17 B18 B19 B20 B21 B22 B23 B24 B25) (fp.leq (fp.add roundNearestTiesToEven (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111001 #b0011010011011101001110100011110011111100010100011100) |main::1::x!0@1#6|) |main::1::x!0@1#6|) (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111001 #b1111110000100000010000000110101101010110011111000000) |main::1::x!0@1#6|) |main::1::y!0@1#6|)) (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111001 #b0000011010000111110000011110010101011011101010110000) |main::1::y!0@1#6|) |main::1::y!0@1#6|)) (fp #b0 #b01111111111 #b0000000000010000110011011110001101100110001010001110))))
(define-fun B32 () Bool (=> (and true B17 B18 B19 B20 B21 B22 B23 B24 B25 B26 B27) (fp.leq (fp.add roundNearestTiesToEven (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111001 #b0011010011011101001110100011110011111100010100011100) |main::1::x!0@1#7|) |main::1::x!0@1#7|) (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111001 #b1111110000100000010000000110101101010110011111000000) |main::1::x!0@1#7|) |main::1::y!0@1#7|)) (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111001 #b0000011010000111110000011110010101011011101010110000) |main::1::y!0@1#7|) |main::1::y!0@1#7|)) (fp #b0 #b01111111111 #b0000000000010000110011011110001101100110001010001110))))
(assert (or (not B28) (not B29) (not B30) (not B31) (not B32)))
(define-fun B33 () Bool (not (fp.leq (fp.add roundNearestTiesToEven (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111001 #b0011010011011101001110100011110011111100010100011100) |main::1::x!0@1#3|) |main::1::x!0@1#3|) (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111001 #b1111110000100000010000000110101101010110011111000000) |main::1::x!0@1#3|) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (fp #b0 #b01111111111 #b0000000000010000110011011110001101100110001010001110))))
(define-fun B34 () Bool (not (fp.leq (fp.add roundNearestTiesToEven (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111001 #b0011010011011101001110100011110011111100010100011100) |main::1::x!0@1#4|) |main::1::x!0@1#4|) (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111001 #b1111110000100000010000000110101101010110011111000000) |main::1::x!0@1#4|) |main::1::y!0@1#4|)) (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111001 #b0000011010000111110000011110010101011011101010110000) |main::1::y!0@1#4|) |main::1::y!0@1#4|)) (fp #b0 #b01111111111 #b0000000000010000110011011110001101100110001010001110))))
(define-fun B35 () Bool (not (fp.leq (fp.add roundNearestTiesToEven (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111001 #b0011010011011101001110100011110011111100010100011100) |main::1::x!0@1#5|) |main::1::x!0@1#5|) (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111001 #b1111110000100000010000000110101101010110011111000000) |main::1::x!0@1#5|) |main::1::y!0@1#5|)) (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111001 #b0000011010000111110000011110010101011011101010110000) |main::1::y!0@1#5|) |main::1::y!0@1#5|)) (fp #b0 #b01111111111 #b0000000000010000110011011110001101100110001010001110))))
(define-fun B36 () Bool (not (fp.leq (fp.add roundNearestTiesToEven (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111001 #b0011010011011101001110100011110011111100010100011100) |main::1::x!0@1#6|) |main::1::x!0@1#6|) (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111001 #b1111110000100000010000000110101101010110011111000000) |main::1::x!0@1#6|) |main::1::y!0@1#6|)) (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp #b0 #b01111111001 #b0000011010000111110000011110010101011011101010110000) |main::1::y!0@1#6|) |main::1::y!0@1#6|)) (fp #b0 #b01111111111 #b0000000000010000110011011110001101100110001010001110))))
(declare-fun |symex::io::0| () (_ BitVec 32))
(assert (= |argc'#0| |symex::io::0|))
(check-sat)
(exit)

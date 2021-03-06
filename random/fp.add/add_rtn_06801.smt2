(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00011111 #b11011110111010001111101)))
;; x should be Float32(0x0FEF747D [Rational(15692925, 664613997892457936451903530140172288), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b11111110 #b01100011010011110011101)))
;; y should be Float32(0xFF31A79D [Rational(-236143653167613199030195002275052650496), -236143653167613199030195002275052650496.000000])

(declare-const result Float32)
(assert (= result (fp.add RTN x y)))
(assert (not (= result ((_ to_fp 8 24) #xFF31A79D))))
(check-sat)
(exit)

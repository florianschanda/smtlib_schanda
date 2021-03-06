(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xFE8C1357)))
;; x should be Float32(0xFE8C1357 [Rational(-93096168809917950813400975640182652928), -93096168809917950813400975640182652928.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x8002113E)))
;; y should be Float32(0x8002113E [Rational(-67743, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const result Float32)
(assert (= result (fp.min x y)))
(assert (not (= result (fp #b1 #b11111101 #b00011000001001101010111))))
(check-sat)
(exit)

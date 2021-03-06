(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b10111110110111010110110)))
;; x should be Float32(0x805F6EB6 [Rational(-3127131, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x8133147D)))
;; y should be Float32(0x8133147D [Rational(-11736189, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const result Float32)
(assert (= result (fp.mul RTN x y)))
(assert (not (= result (fp #b0 #b00000000 #b00000000000000000000000))))
(check-sat)
(exit)

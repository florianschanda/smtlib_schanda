(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x7F7FFFFF)))
;; x should be Float32(0x7F7FFFFF [Rational(340282346638528859811704183484516925440), 340282346638528859811704183484516925440.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b00011010110000000111110)))
;; y should be Float32(0x800D603E [Rational(-438303, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const result Float32)
(assert (= result (fp.rem x y)))
(assert (not (= result ((_ to_fp 8 24) #x8003ADFA))))
(check-sat)
(exit)

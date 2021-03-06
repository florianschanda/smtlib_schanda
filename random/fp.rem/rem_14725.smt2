(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b11111110 #b11111111111111111111111)))
;; x should be Float32(0xFF7FFFFF [Rational(-340282346638528859811704183484516925440), -340282346638528859811704183484516925440.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x89031B36)))
;; y should be Float32(0x89031B36 [Rational(-4296091, 2722258935367507707706996859454145691648), -0.000000])

(declare-const result Float32)
(assert (= result (fp.rem x y)))
(assert (not (= result ((_ to_fp 8 24) #x084CF430))))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b11111110 #b11111111111111111111111)))
;; x should be Float32(0x7F7FFFFF [Rational(340282346638528859811704183484516925440), 340282346638528859811704183484516925440.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x4AF3EB39)))
;; y should be Float32(0x4AF3EB39 [Rational(15985465, 2), 7992732.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xD391F913)))
;; z should be Float32(0xD391F913 [Rational(-1253898059776), -1253898059776.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (= result (fp #b0 #b11111110 #b11111111111111111111111)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTN conversion of Float32(+halfpoint) -> Float128
(declare-const x Float32)
(assert (= x (fp #b0 #b10010011 #b01010010110101110100100)))
;; x should be Float32(0x49A96BA4 [Rational(2775785, 2), 1387892.500000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTN x)))
;; y should be Float128(0x401352D7480000000000000000000000 [Rational(2775785, 2), 1387892.500000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #x401352D7480000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)

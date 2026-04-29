(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTN conversion of Float32(-halfpoint) -> Float64
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b10001101011110001011111)))
;; x should be Float32(0xCAC6BC5F [Rational(-13024351, 2), -6512175.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTN x)))
;; y should be Float64(0xC158D78BE0000000 [Rational(-13024351, 2), -6512175.500000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #xC158D78BE0000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)

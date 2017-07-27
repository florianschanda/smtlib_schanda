(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNA conversion of Float32(+normal) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x48D1A309)))
;; x should be Float32(0x48D1A309 [Rational(13738761, 32), 429336.281250])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNA x)))
;; y should be Float64(0x411A346120000000 [Rational(13738761, 32), 429336.281250])

(declare-const z Float64)
(assert (= z (fp #b0 #b10000010001 #b1010001101000110000100100000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)

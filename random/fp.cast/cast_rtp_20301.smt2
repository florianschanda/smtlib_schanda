(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTP conversion of Float32(+normal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b11110000 #b00000110001101001101011)))
;; x should be Float32(0x78031A6B [Rational(10636354820799162328947502450999296), 10636354820799162328947502450999296.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTP x)))
;; y should be Float64(0x4700634D60000000 [Rational(10636354820799162328947502450999296), 10636354820799162328947502450999296.000000])

(declare-const z Float64)
(assert (= z (fp #b0 #b10001110000 #b0000011000110100110101100000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)

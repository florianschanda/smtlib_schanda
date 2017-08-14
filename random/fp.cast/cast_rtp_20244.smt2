(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTP conversion of Float32(+halfpoint) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b11101101110110110011111)))
;; x should be Float32(0x4AF6ED9F [Rational(16182687, 2), 8091343.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTP x)))
;; y should be Float64(0x415EDDB3E0000000 [Rational(16182687, 2), 8091343.500000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #x415EDDB3E0000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)

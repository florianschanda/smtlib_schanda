(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTP conversion of Float32(+subnormal) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x000792D8)))
;; x should be Float32(0x000792D8 [Rational(62043, 89202980794122492566142873090593446023921664), 0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTP x)))
;; y should be Float64(0x37CE4B6000000000 [Rational(62043, 89202980794122492566142873090593446023921664), 0.000000])

(declare-const z Float64)
(assert (= z (fp #b0 #b01101111100 #b1110010010110110000000000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)

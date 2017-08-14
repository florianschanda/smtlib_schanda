(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTP conversion of Float32(+halfpoint) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x49CEF2F4)))
;; x should be Float32(0x49CEF2F4 [Rational(3390653, 2), 1695326.500000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTP x)))
;; y should be Float128(0x40139DE5E80000000000000000000000 [Rational(3390653, 2), 1695326.500000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #x40139DE5E80000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTP conversion of Float32(+halfpoint) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x49CEF2F4)))
;; x should be Float32(0x49CEF2F4 [Rational(3390653, 2), 1695326.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTP x)))
;; y should be Float64(0x4139DE5E80000000 [Rational(3390653, 2), 1695326.500000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #x4139DE5E80000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)

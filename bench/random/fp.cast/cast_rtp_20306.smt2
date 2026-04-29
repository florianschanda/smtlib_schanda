(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTP conversion of Float32(+normal) -> Float16
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x451663C9)))
;; x should be Float32(0x451663C9 [Rational(9855945, 4096), 2406.236572])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RTP x)))
;; y should be Float16(0x68B4 [Rational(2408), 2408.000000])

(declare-const z Float16)
(assert (= z ((_ to_fp 5 11) #x68B4)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)

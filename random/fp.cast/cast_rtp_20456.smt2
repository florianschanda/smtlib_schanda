(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTP conversion of Float32(-subnormal) -> Float16
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x80202542)))
;; x should be Float32(0x80202542 [Rational(-1053345, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RTP x)))
;; y should be Float16(-zero)

(declare-const z Float16)
(assert (= z ((_ to_fp 5 11) #x8000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNA conversion of Float32(-normal) -> Float16
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC4B56BBA)))
;; x should be Float32(0xC4B56BBA [Rational(-5944797, 4096), -1451.366455])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RNA x)))
;; y should be Float16(0xE5AB [Rational(-1451), -1451.000000])

(declare-const z Float16)
(assert (= z ((_ to_fp 5 11) #xE5AB)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)

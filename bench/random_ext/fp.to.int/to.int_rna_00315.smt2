(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.int RNA -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC8212E60)))
;; x should be Float32(0xC8212E60 [Rational(-330099, 2), -165049.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be -165050

(declare-const z Int)
(assert (= z (- 165050)))
(assert (not (= y z)))

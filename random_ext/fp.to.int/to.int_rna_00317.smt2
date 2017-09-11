(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.int RNA -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAF9ACFB)))
;; x should be Float32(0xCAF9ACFB [Rational(-16362747, 2), -8181373.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be -8181374

(declare-const z Int)
(assert (= z (- 8181374)))
(assert (not (= y z)))

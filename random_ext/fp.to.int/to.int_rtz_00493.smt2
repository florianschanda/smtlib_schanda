(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.int RTZ -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA6DB8A2)))
;; x should be Float32(0xCA6DB8A2 [Rational(-7789649, 2), -3894824.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be -3894824

(declare-const z Int)
(assert (= z (- 3894824)))
(assert (not (= y z)))

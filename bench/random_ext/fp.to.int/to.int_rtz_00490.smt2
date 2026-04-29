(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.int RTZ -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC7F69140)))
;; x should be Float32(0xC7F69140 [Rational(-252485, 2), -126242.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be -126242

(declare-const z Int)
(assert (= z (- 126242)))
(assert (not (= y z)))

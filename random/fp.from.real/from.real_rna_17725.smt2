(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00000000000000000000000)))
;; x should be Float32(+zero)

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 1.0 4460149039706124628307143654529672301196083200.0))))
;; w should be Float32(+zero)

(assert (not (= x w)))
(check-sat)
(exit)

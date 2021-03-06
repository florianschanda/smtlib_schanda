(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xF52AD4E5)))
;; x should be Float32(0xF52AD4E5 [Rational(-216554804696316068728850125684736), -216554804696316068728850125684736.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- 48514202086914429404921188291615.0))))
;; w should be Float32(0xF4191576 [Rational(-48514202812541625697992240529408), -48514202812541625697992240529408.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)

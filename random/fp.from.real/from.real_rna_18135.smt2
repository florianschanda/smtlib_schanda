(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xEB8CEEF7)))
;; x should be Float32(0xEB8CEEF7 [Rational(-340756188629514532557946880), -340756188629514532557946880.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- 315216922008403328808050596.0))))
;; w should be Float32(0xEB825EE4 [Rational(-315216929713880690279317504), -315216929713880690279317504.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)

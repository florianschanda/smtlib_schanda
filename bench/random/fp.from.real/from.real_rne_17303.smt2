(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x7F800000)))
;; x should be Float32(+oo)

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE 129050143195321967019051826378964777210.0)))
;; w should be Float32(0x7EC22C4F [Rational(129050147277203950120478701682862063616), 129050147277203950120478701682862063616.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)

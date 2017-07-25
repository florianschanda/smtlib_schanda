(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_BV)
(set-option :produce-models true)
(set-info :source |SPARK inspired benchmarks by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

;; verification of the spark lemma library

(declare-const val1 (_ BitVec 16))
(declare-const val2 (_ BitVec 16))
(declare-const denom (_ BitVec 16))

(assert (bvsge denom (_ bv1 16)))
(assert (bvsle val1 val2))


(assert (not (bvsle (bvsdiv val1 denom)
                    (bvsdiv val2 denom))))
(check-sat)
(get-value (val1 val2 denom))
(exit)

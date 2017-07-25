(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_BV)
(set-option :produce-models true)
(set-info :source |SPARK inspired problems by Florian Schanda|)
(set-info :category crafted)
(set-info :status sat)

(define-const m (_ BitVec 8) (_ bv200 8))

(declare-const x (_ BitVec 8))
(declare-const y (_ BitVec 8))

;; we have a type mod m

(assert (bvult x m))
(assert (bvult y m))

;; (x + y) mod 250  <without casting>
(define-const r1 (_ BitVec 9)
  ((_ zero_extend 1) (bvurem (bvadd x y) m)))

;; (x + y) mod 250  <with casting>
(define-const r2 (_ BitVec 9)
  (bvurem (bvadd ((_ zero_extend 1) x) ((_ zero_extend 1) y))
          ((_ zero_extend 1) m)))

(assert (not (= r1 r2)))
(check-sat)
(get-value (x y))
(get-value (r1 r2))
(exit)

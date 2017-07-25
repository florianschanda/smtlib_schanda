(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

(define-fun isFinite ((f Float32)) Bool
  (or (fp.isNormal f)
      (fp.isSubnormal f)
      (fp.isZero f)))

(declare-const a Float32)
(declare-const x Float32)

(define-fun float__last () Float32 ((_ to_fp 8 24) #x7F7FFFFF))
(define-fun f0          () Float32 ((_ to_fp 8 24) RNE 0.0))
(define-fun f1          () Float32 ((_ to_fp 8 24) RNE 1.0))
(define-fun f30         () Float32 ((_ to_fp 8 24) RNE 30.0))

;; a in 0.0 .. 30.0
;; x in 0.0 .. 30.0
(assert (and (fp.geq a f0) (fp.leq a f30)))
(assert (and (fp.geq x f0) (fp.leq x f30)))

;; x > 30.0 / float'last
(assert (fp.gt x (fp.div RNE f30 float__last)))

;; a <= x
(assert (fp.leq a x))

(define-fun res () Float32 (fp.div RNE a x))

;; goal: res in 0.0 .. 1.0
(assert (not (and (fp.geq res f0)
                  (fp.leq res f1))))
(check-sat)
(exit)

(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

;; average of two floating point numbers...

(define-const t__first Float32 ((_ to_fp 8 24) RNE (- 10.0)))
(define-const t__last  Float32 ((_ to_fp 8 24) RNE    10.0))
(define-const f2       Float32 ((_ to_fp 8 24) RNE     2.0))

(define-fun in_t_range ((f Float32)) Bool
  (and (fp.leq t__first f)
       (fp.leq f t__last)))

;; a in -10.0 .. 10.0
;; b in -10.0 .. 10.0
(declare-const a Float32)
(declare-const b Float32)

(assert (in_t_range a))
(assert (in_t_range b))
(assert (fp.lt a b))

;; mid = (a + b) / 2.0
(define-const mid Float32
  (fp.div RNE (fp.add RNE a b) f2))

;; goal: mid in a .. b
(assert (not (and (fp.leq a mid)
                  (fp.leq mid b))))

(check-sat)
(exit)

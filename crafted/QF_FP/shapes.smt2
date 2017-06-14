(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

(define-fun coord__first  () Float32 ((_ to_fp 8 24) RNE (- 100.0)))
(define-fun coord__last   () Float32 ((_ to_fp 8 24) RNE    100.0))
(define-fun radius__first () Float32 ((_ to_fp 8 24) RNE      0.0))
(define-fun radius__last  () Float32 ((_ to_fp 8 24) RNE     10.0))
(define-fun float__first  () Float32 ((_ to_fp 8 24) #xFF7FFFFF))
(define-fun float__last   () Float32 ((_ to_fp 8 24) #x7F7FFFFF))

(define-fun isFinite ((f Float32)) Bool
  (or (fp.isNormal f)
      (fp.isSubnormal f)
      (fp.isZero f)))

(define-fun in_coord ((f Float32)) Bool (and (fp.geq f coord__first)
                                             (fp.leq f coord__last)))
(define-fun in_radius ((f Float32)) Bool (and (fp.geq f radius__first)
                                              (fp.leq f radius__last)))

(declare-fun   x   () Float32)
(declare-fun   y   () Float32)
(declare-fun   c_x () Float32)
(declare-fun   c_y () Float32)
(declare-fun   c_r () Float32)

(assert (in_coord x))
(assert (in_coord y))
(assert (in_coord c_x))
(assert (in_coord c_y))
(assert (in_radius c_r))

(define-fun delta_x () Float32
  (fp.abs (fp.sub RNE x c_x)))

(define-fun delta_y () Float32
  (fp.abs (fp.sub RNE y c_y)))

(define-fun term_1 () Float32 (fp.mul RNE delta_x delta_x))
(define-fun term_2 () Float32 (fp.mul RNE delta_y delta_y))
(define-fun term_3 () Float32 (fp.add RNE term_1 term_2))

(assert (not (isFinite term_3)))
(check-sat)
(exit)

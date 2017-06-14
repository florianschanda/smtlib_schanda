(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
;;(set-info :status unsat)

(define-const f360 Float32 ((_ to_fp 8 24) RNE 360.0))
(define-fun in_range ((x Float32)) Bool (fp.leq (_ +zero 8 24)
                                                x
                                                f360))

(declare-const a Float32)
(declare-const b Float32)

(assert (in_range a))
(assert (in_range b))

(define-const tmp Float32 (fp.add RNE a b))

(define-const r1 Float32 (fp.rem tmp f360))
(define-const r2 Float32 (ite (fp.geq tmp f360)
                              (fp.sub RNE tmp f360)
                              tmp))

(assert (distinct r1 r2))
(check-sat)
(get-value (a b))
(get-value (r1))
(get-value (r2))
(exit)

(set-logic QF_BV)
(set-option :produce-models true)
(set-info :source |Overflow checking benchmarks by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

(define-fun ones_32 ((x (_ BitVec 32))) (_ BitVec 32)
  (let ((tmp_0 (bvsub x (bvand (bvlshr x (_ bv1 32)) #x55555555))))
    (let ((tmp_1 (bvadd (bvand (bvlshr tmp_0 (_ bv2 32)) #x33333333)
                        (bvand tmp_0 #x33333333))))
      (let ((tmp_2 (bvand (bvadd (bvlshr tmp_1 (_ bv4 32))
                                 tmp_1)
                          #x0f0f0f0f)))
        (bvlshr (bvmul tmp_2 #x01010101) (_ bv24 32))
        )
      )
    )
  )

(define-fun lzc_32 ((x (_ BitVec 32))) (_ BitVec 32)
  (let ((tmp_0 (bvor x     (bvlshr x     (_ bv1 32)))))
  (let ((tmp_1 (bvor tmp_0 (bvlshr tmp_0 (_ bv2 32)))))
  (let ((tmp_2 (bvor tmp_1 (bvlshr tmp_1 (_ bv4 32)))))
  (let ((tmp_3 (bvor tmp_2 (bvlshr tmp_2 (_ bv8 32)))))
  (let ((tmp_4 (bvor tmp_3 (bvlshr tmp_3 (_ bv16 32)))))
    (bvsub (_ bv32 32) (ones_32 tmp_4))))))))

(define-fun obvious_1_bvumulo_32 ((a (_ BitVec 32)) (b (_ BitVec 32))) Bool
  (let ((result (bvmul ((_ zero_extend 32) a)
                       ((_ zero_extend 32) b)))
        (last (bvshl (_ bv1 64) (_ bv32 64))))
    (bvuge result last))
  )

(define-fun bvumulo_32 ((a (_ BitVec 32)) (b (_ BitVec 32))) Bool
  (=> (bvsge (bvadd (lzc_32 a) (lzc_32 b)) (_ bv31 32))
      (let ((result (bvmul ((_ zero_extend 1) a)
                           ((_ zero_extend 1) b))))
        (= ((_ extract 32 32) result) #b1))
      )
  )

(declare-const x (_ BitVec 32))
(declare-const y (_ BitVec 32))

(assert (not (= (obvious_1_bvumulo_32 x y)
                (bvumulo_32 x y))))

(check-sat)
;; (get-value (x y))
;; (get-value ((obvious_1_bvumulo_32 x y)))
;; (get-value ((bvumulo_32 x y)))
;; (get-value ((lzc_32 x)))
;; (get-value ((lzc_32 y)))
;; (get-value ((bvslt (bvadd (lzc_32 x) (lzc_32 y)) (_ bv31 32))))
(exit)

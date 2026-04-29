(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_BV)
(set-info :source |SPARK inspired problems by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

; We have a variable x /= 0
(declare-const x (_ BitVec 64))
(assert (distinct x (_ bv0 64)))

; To determine the rightmost 1-bit, we can use this trick...
(define-const rightmost (_ BitVec 64) (bvand x (bvneg x)))

; To verify it we need to show two things:
; (1) the given bit is indeed set to 1
(define-fun is_bit_one ((bit (_ BitVec 64))) Bool
  (not (= (bvand x (bvshl (_ bv1 64) bit))
          (_ bv0 64))))
; (2) all bits to the right of it are set to 0
(define-fun right_bits_zero ((bit (_ BitVec 64))) Bool
  (= (bvand x (bvnot (bvneg (bvshl (_ bv1 64) bit))))
     (_ bv0 64)))

; We declare a new variable that has these properties
(declare-const b (_ BitVec 64))
(assert (is_bit_one b))
(assert (right_bits_zero b))

; We show that "rightmost" == 1 << b
(assert (not (= rightmost
                (bvshl (_ bv1 64) b))))
(check-sat)
(exit)

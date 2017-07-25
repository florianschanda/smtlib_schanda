(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :category crafted)
(set-info :status sat)

(define-fun is_finite ((f Float32)) Bool
  (or (fp.isZero f)
      (fp.isNormal f)
      (fp.isSubnormal f)))

;; average of two floating point numbers can be done as a/2 + b/2 or as
;; (a+b)/2 in some cases.

(define-const two Float32 ((_ to_fp 8 24) #x40000000))

(declare-const a Float32)
(declare-const b Float32)

(assert (is_finite a))
(assert (is_finite b))

; a/2 + b/2
(define-const avg_1 Float32
  (fp.add RNE (fp.div RNE a two)
              (fp.div RNE b two)))

; (a + b) / 2  (in double precision to deal with a+b overflowing)
(define-const avg_2 Float32
  ((_ to_fp 8 24) RNE
   (fp.div RNE (fp.add RNE ((_ to_fp 11 53) RNE a)
                           ((_ to_fp 11 53) RNE b))
               ((_ to_fp 11 53) RNE two))))

(assert (not (fp.eq avg_1 avg_2)))
(check-sat)
(exit)

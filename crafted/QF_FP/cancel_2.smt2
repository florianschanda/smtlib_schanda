(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda and Martin Brain|)
(set-info :category crafted)
(set-info :status sat)

(define-fun is_valid ((f Float32)) Bool
  (not (fp.isNaN f)))

(define-const f0 Float32 ((_ to_fp 8 24) #x00000000)) ; +0

(declare-const a Float32)
(assert (is_valid a))

; In other languages this is not always true
(assert (not (fp.eq (fp.add RNE a (fp.neg a))
                    f0)))
(check-sat)
(exit)

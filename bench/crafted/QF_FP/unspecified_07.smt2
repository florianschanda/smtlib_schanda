(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Florian Schanda|)
(set-info :category crafted)
(set-info :status sat)

;; precision matters

(declare-const x_32 Float32)
(declare-const y_32 Float32)
(assert (and (fp.isZero x_32)
             (fp.isZero y_32)))
(assert (distinct x_32 y_32))

(define-const m_32 Float32 (fp.min x_32 y_32))

(define-const x_64 Float64 ((_ to_fp 11 53) RNE x_32))
(define-const y_64 Float64 ((_ to_fp 11 53) RNE y_32))

(define-const m_64 Float64 (fp.min x_64 y_64))

(define-const same_sign Bool (= (fp.isPositive m_32)
                                (fp.isPositive m_64)))

(assert (not same_sign))
(check-sat)
(exit)

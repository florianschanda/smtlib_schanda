(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b00010010 #b10011011110010101000010)))
;; x should be Float32(0x094DE542 [Rational(6746785, 2722258935367507707706996859454145691648), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 1836649569552269309316533805807359335378045834509.0 741069371118823650710854304055602610260927901860099609852528537650644029695590400.0))))
;; w should be Float32(0x094DE542 [Rational(6746785, 2722258935367507707706996859454145691648), 0.000000])

(assert (= x w))
(check-sat)
(exit)

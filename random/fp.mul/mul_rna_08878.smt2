(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xFF800000)))
;; x should be Float32(-oo)

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b01011111000100000010100)))
;; y should be Float32(0x802F8814 [Rational(-778757, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const result Float32)
(assert (= result (fp.mul RNA x y)))
(assert (= result ((_ to_fp 8 24) #x7F800000)))
(check-sat)
(exit)

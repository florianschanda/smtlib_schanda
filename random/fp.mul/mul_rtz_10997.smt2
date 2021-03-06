(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC9EF6971)))
;; x should be Float32(0xC9EF6971 [Rational(-15690097, 8), -1961262.125000])

(declare-const y Float32)
(assert (= y (fp #b1 #b10010011 #b10110101011000100001100)))
;; y should be Float32(0xC9DAB10C [Rational(-3583043, 2), -1791521.500000])

(declare-const result Float32)
(assert (= result (fp.mul RTZ x y)))
(assert (= result ((_ to_fp 8 24) #x544C855D)))
(check-sat)
(exit)

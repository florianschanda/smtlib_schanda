(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.from.binary nan)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b11111111111011101011011100100100))
;; x should be ffeeb724

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(NaN)

(assert (= y (_ NaN 8 24)))
(check-sat)
(exit)

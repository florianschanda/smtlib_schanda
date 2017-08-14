(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.from.binary -normal)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b11110110100111110101100100000111))
;; x should be f69f5907

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0xF69F5907 [Rational(-1615978299919726936434459719761920), -1615978299919726936434459719761920.000000])

(assert (= y (fp #b1 #b11101101 #b00111110101100100000111)))
(check-sat)
(exit)

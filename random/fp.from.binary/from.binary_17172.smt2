(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.from.binary -normal)
;; float -> binary interchange
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xF69F5907)))
;; x should be Float32(0xF69F5907 [Rational(-1615978299919726936434459719761920), -1615978299919726936434459719761920.000000])

(declare-const y (_ BitVec 32))
(assert (= ((_ to_fp 8 24) y) x))
;; y should be #b11110110100111110101100100000111

(assert (= y #b11110110100111110101100100000111))
(check-sat)
(exit)

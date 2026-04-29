(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b00111011 #b11101111001001001011100)))
;; x should be Float32(0x9DF7925C [Rational(-4056215, 618970019642690137449562112), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 25106755987588580822964876054068889.0 3831238852164722145895867567875772959046847805459005440.0)))))
;; w should be Float32(0x9DF7925C [Rational(-4056215, 618970019642690137449562112), -0.000000])

(assert (= x w))
(check-sat)
(exit)

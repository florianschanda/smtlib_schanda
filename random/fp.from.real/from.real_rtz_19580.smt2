(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b1 #b00111011 #b11101111001001001011100)))
;; x should be Float32(0x9DF7925C [Rational(-4056215, 618970019642690137449562112), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 40562153887.0 6189700196426901374495621120000.0)))))
;; w should be Float32(0x9DF7925D [Rational(-16224861, 2475880078570760549798248448), -0.000000])

(assert (distinct x w))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x9DF7925C)))
;; x should be Float32(0x9DF7925C [Rational(-4056215, 618970019642690137449562112), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 5170663193.0 1547425049106725343623905280000.0)))))
;; w should be Float32(0x9D7C794A [Rational(-8273061, 2475880078570760549798248448), -0.000000])

(assert (distinct x w))
(check-sat)
(exit)

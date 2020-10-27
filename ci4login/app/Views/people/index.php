<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col">
            <h1 class="mt-2">People List</h1>
            <form action="" method="POST">
                <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="Enter the search keyword..." name="keyword">
                    <div class="input-group-append">
                        <button class="btn btn-outline-secondary" type="submit" name="submit">Search</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <table class="table mt-3">
                <thead>
                    <tr>
                        <th scope="col">No</th>
                        <th scope="col">Name</th>
                        <th scope="col">Address</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1 + (5 * ($currentPage - 1)); ?>
                    <?php foreach ($people as $p) : ?>
                        <tr>
                            <th scope="row"><?= $i++; ?></th>
                            <td><?= $p['name']; ?></td>
                            <td><?= $p['address']; ?></td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
            <?= $pager->links('people', 'people_pagination'); ?>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>